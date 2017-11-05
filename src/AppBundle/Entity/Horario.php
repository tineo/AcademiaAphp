<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Horario
 *
 * @ORM\Table(name="horario")
 * @ORM\Entity
 */
class Horario
{
    /**
     * @var integer
     *
     * @ORM\Column(name="iddisciplina", type="integer", nullable=true)
     */
    private $iddisciplina;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="horainicio", type="time", nullable=true)
     */
    private $horainicio;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="horafin", type="time", nullable=true)
     */
    private $horafin;

    /**
     * @var string
     *
     * @ORM\Column(name="dias", type="text", length=255, nullable=true)
     */
    private $dias;

    /**
     * @var integer
     *
     * @ORM\Column(name="coliseo", type="integer", nullable=true)
     */
    private $coliseo;

    /**
     * @var integer
     *
     * @ORM\Column(name="idhorario", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idhorario;


}

