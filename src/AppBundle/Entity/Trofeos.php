<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Trofeos
 *
 * @ORM\Table(name="trofeos")
 * @ORM\Entity
 */
class Trofeos
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idalumno", type="integer", nullable=true)
     */
    private $idalumno;

    /**
     * @var integer
     *
     * @ORM\Column(name="iddisciplinaevento", type="integer", nullable=true)
     */
    private $iddisciplinaevento;

    /**
     * @var integer
     *
     * @ORM\Column(name="idprofesor", type="integer", nullable=true)
     */
    private $idprofesor;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="string", length=50, nullable=true)
     */
    private $descripcion;

    /**
     * @var string
     *
     * @ORM\Column(name="categoria", type="string", length=15, nullable=true)
     */
    private $categoria;

    /**
     * @var integer
     *
     * @ORM\Column(name="idtrofeo", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idtrofeo;


}

