<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Asistencia
 *
 * @ORM\Table(name="asistencia")
 * @ORM\Entity
 */
class Asistencia
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="dia", type="datetime", nullable=true)
     */
    private $dia;

    /**
     * @var integer
     *
     * @ORM\Column(name="idalumno", type="integer", nullable=true)
     */
    private $idalumno;

    /**
     * @var integer
     *
     * @ORM\Column(name="tipoestado", type="integer", nullable=true)
     */
    private $tipoestado;

    /**
     * @var integer
     *
     * @ORM\Column(name="idasistencia", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idasistencia;


}

